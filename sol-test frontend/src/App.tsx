import React, { useState, useEffect } from 'react';
import './App.css';

interface Vulnerability {
  id: string;
  title: string;
  description: string;
  severity: 'high' | 'medium' | 'low';
  type: 'solidity' | 'stacks';
}

const INITIAL_CODE = `// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint256 public count;

    function increment() public {
        count = count + 1;
    }
}`;

const App: React.FC = () => {
  const [code, setCode] = useState(INITIAL_CODE);
  const [scanning, setScanning] = useState(false);
  const [results, setResults] = useState<Vulnerability[]>([]);
  const [activeTab, setActiveTab] = useState<'editor' | 'history' | 'docs'>('editor');

  const scanContract = () => {
    setScanning(true);
    setResults([]);
    
    // Simulate complex scanning logic with a timeout
    setTimeout(() => {
      const detected: Vulnerability[] = [];
      
      // Basic mock rules for vulnerability detection
      if (code.includes('tx.origin')) {
        detected.push({
          id: 'v1',
          title: 'Dangerous use of tx.origin',
          description: 'Using tx.origin for authentication is vulnerable to phishing attacks. Use msg.sender instead.',
          severity: 'high',
          type: 'solidity'
        });
      }
      
      if (code.includes('delegatecall')) {
        detected.push({
          id: 'v2',
          title: 'Unrestricted delegatecall',
          description: 'Arbitrary delegatecall could allow an attacker to gain full control of the contract state.',
          severity: 'high',
          type: 'solidity'
        });
      }

      if (code.includes('selfdestruct')) {
        detected.push({
          id: 'v3',
          title: 'Avoid selfdestruct',
          description: 'Self-destruct is deprecated and can lead to irreversible loss of funds or permanent contract disabling.',
          severity: 'high',
          type: 'solidity'
        });
      }

      if (code.includes('block.timestamp')) {
        detected.push({
          id: 'v4',
          title: 'Timestamp manipulation',
          description: 'Dependence on block.timestamp can be manipulated by miners (up to 900s in Ethereum).',
          severity: 'medium',
          type: 'solidity'
        });
      }

      // If no issues found, show success/clean report
      if (detected.length === 0) {
        setResults([]);
      } else {
        setResults(detected);
      }
      
      setScanning(false);
    }, 2500);
  };

  return (
    <div className="app-container">
      <aside className="sidebar">
        <div className="logo">
          <div className="logo-icon">S</div>
          <span className="logo-text">Sol-Test</span>
        </div>
        
        <nav className="nav-menu">
          <div 
            className={`nav-item ${activeTab === 'editor' ? 'active' : ''}`}
            onClick={() => setActiveTab('editor')}
          >
            <span className="material-icons-outlined">code</span>
            <span>Security Scanner</span>
          </div>
          <div 
            className={`nav-item ${activeTab === 'history' ? 'active' : ''}`}
            onClick={() => setActiveTab('history')}
          >
            <span className="material-icons-outlined">history</span>
            <span>Audit History</span>
          </div>
          <div 
            className={`nav-item ${activeTab === 'docs' ? 'active' : ''}`}
            onClick={() => setActiveTab('docs')}
          >
            <span className="material-icons-outlined">description</span>
            <span>Documentation</span>
          </div>
        </nav>

        <div className="sidebar-footer" style={{marginTop: 'auto', fontSize: '0.8rem', color: 'var(--text-muted)'}}>
          v1.0.4 Pre-Release
        </div>
      </aside>

      <main className="main-content">
        <header className="panel-header animate-fade-in" style={{marginBottom: 0}}>
          <div>
            <h1 style={{fontSize: '2rem', fontWeight: '800'}}>Vulnerability Assessment</h1>
            <p style={{color: 'var(--text-secondary)'}}>Secure your Solidity and Stacks smart contracts with automated AI audits.</p>
          </div>
          <div style={{display: 'flex', gap: '0.5rem'}}>
             <span className="badge badge-sol">Solidity</span>
             <span className="badge badge-stacks">Stacks/Clarity</span>
          </div>
        </header>

        <section className="glass-panel animate-fade-in" style={{animationDelay: '0.1s'}}>
          <div className="panel-header">
            <h3>Contract Source Code</h3>
            <span style={{fontSize: '0.8rem', color: 'var(--text-muted)'}}>Supports .sol and .clar files</span>
          </div>
          
          <textarea 
            className="code-editor"
            value={code}
            onChange={(e) => setCode(e.target.value)}
            spellCheck="false"
          />

          <div className="controls">
            <button className="btn btn-secondary" onClick={() => setCode('')}>Clear</button>
            <button 
              className="btn btn-primary" 
              onClick={scanContract}
              disabled={scanning}
            >
              {scanning ? (
                <>
                  <span className="spinner"></span>
                  Analyzing Logic...
                </>
              ) : (
                <>
                  <span>🔍</span>
                  Run Deep Scan
                </>
              )}
            </button>
          </div>
        </section>

        <section className="animate-fade-in" style={{animationDelay: '0.2s'}}>
          <div className="panel-header">
            <h3 style={{display: 'flex', alignItems: 'center', gap: '0.5rem'}}>
              Security Reports
              {results.length > 0 && <span className="badge" style={{background: 'var(--danger)', color: 'white'}}>{results.length} Issues</span>}
            </h3>
          </div>

          <div className="results-grid">
            {scanning ? (
              <div className="glass-panel" style={{gridColumn: '1 / -1', textAlign: 'center', padding: '4rem'}}>
                <div className="scanner-animation"></div>
                <p>Verifying bytecode against known attack vectors...</p>
              </div>
            ) : results.length > 0 ? (
              results.map(vuln => (
                <div key={vuln.id} className={`vulnerability-card vuln-${vuln.severity}`}>
                  <div className="vuln-title">
                    {vuln.title}
                    <span className={`badge ${vuln.severity === 'high' ? 'vuln-high-badge' : 'vuln-med-badge'}`} style={{
                      backgroundColor: vuln.severity === 'high' ? 'rgba(239, 68, 68, 0.1)' : 'rgba(245, 158, 11, 0.1)',
                      color: vuln.severity === 'high' ? 'var(--danger)' : 'var(--warning)',
                    }}>{vuln.severity} severity</span>
                  </div>
                  <p className="vuln-desc">{vuln.description}</p>
                  <div style={{marginTop: '1rem', display: 'flex', justifyContent: 'flex-end'}}>
                     <button className="btn btn-secondary" style={{padding: '4px 12px', fontSize: '0.75rem'}}>How to fix?</button>
                  </div>
                </div>
              ))
            ) : (
              <div className="glass-panel" style={{gridColumn: '1 / -1', textAlign: 'center', padding: '4rem', opacity: 0.6}}>
                <img src="https://img.icons8.com/isometric/100/shield.png" alt="Shield" style={{marginBottom: '1rem', filter: 'grayscale(1)'}} />
                <h4>No vulnerabilities detected</h4>
                <p>Submit your contract code above to begin the security analysis.</p>
              </div>
            )}
          </div>
        </section>
      </main>

      {/* Inline styles for components not covered in index.css */}
      <style>{`
        .spinner {
          width: 16px;
          height: 16px;
          border: 2px solid rgba(255,255,255,0.3);
          border-top-color: white;
          border-radius: 50%;
          animation: rotate 0.8s linear infinite;
        }
        @keyframes rotate { to { transform: rotate(360deg); } }
        
        .scanner-animation {
          width: 60px;
          height: 60px;
          border: 4px solid var(--accent-primary);
          border-radius: 50%;
          margin: 0 auto 1.5rem;
          position: relative;
          animation: pulse 2s ease-in-out infinite;
        }
        .scanner-animation::after {
          content: '';
          position: absolute;
          top: -10px; left: -10px; right: -10px; bottom: -10px;
          border: 2px solid var(--accent-secondary);
          border-radius: 50%;
          animation: pulse 2s ease-in-out infinite 0.5s;
          opacity: 0.4;
        }
        @keyframes pulse {
          0% { transform: scale(0.95); opacity: 0.5; }
          50% { transform: scale(1.1); opacity: 1; }
          100% { transform: scale(0.95); opacity: 0.5; }
        }
      `}</style>
    </div>
  );
};

export default App;
