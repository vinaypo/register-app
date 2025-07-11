<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Implementation Demo</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f5f7fa;
            color: #2c3e50;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }
        header {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            padding: 40px 0;
            text-align: center;
            border-radius: 0 0 10px 10px;
            margin-bottom: 30px;
        }
        h1 {
            margin: 0;
            font-size: 2.5rem;
        }
        .demo-section {
            background: white;
            border-radius: 8px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .success-badge {
            display: inline-block;
            background-color: #2ecc71;
            color: white;
            padding: 8px 15px;
            border-radius: 20px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .architecture {
            display: flex;
            justify-content: center;
            margin: 40px 0;
        }
        .arch-component {
            text-align: center;
            margin: 0 15px;
        }
        .arch-icon {
            width: 80px;
            height: 80px;
            background-color: #e8f4fc;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            font-size: 36px;
        }
        .arrow {
            display: flex;
            align-items: center;
            font-size: 24px;
            color: #7f8c8d;
        }
        .tech-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }
        .tech-item {
            text-align: center;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 8px;
            transition: transform 0.3s;
        }
        .tech-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        }
        .tech-icon {
            font-size: 40px;
            margin-bottom: 10px;
        }
        footer {
            text-align: center;
            padding: 20px;
            color: #7f8c8d;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>DevOps Implementation Success</h1>
            <p>Automated deployment workflow demonstration</p>
        </div>
    </header>

    <div class="container">
        <div class="demo-section">
            <span class="success-badge">DEPLOYMENT SUCCESSFUL</span>
            <h2>Application Deployment Workflow</h2>
            
            <div class="architecture">
                <div class="arch-component">
                    <div class="arch-icon">📦</div>
                    <h4>Code Repository</h4>
                </div>
                <div class="arrow">→</div>
                <div class="arch-component">
                    <div class="arch-icon">🛠️</div>
                    <h4>Build System</h4>
                </div>
                <div class="arrow">→</div>
                <div class="arch-component">
                    <div class="arch-icon">🧪</div>
                    <h4>Testing</h4>
                </div>
                <div class="arrow">→</div>
                <div class="arch-component">
                    <div class="arch-icon">🚀</div>
                    <h4>Deployment</h4>
                </div>
            </div>

            <p>The automated workflow ensures consistent and reliable deployments with every code change.</p>
        </div>

        <div class="demo-section">
            <h2>Technology Stack</h2>
            <div class="tech-grid">
                <div class="tech-item">
                    <div class="tech-icon">🐙</div>
                    <div>Git</div>
                </div>
                <div class="tech-item">
                    <div class="tech-icon">🔄</div>
                    <div>CI/CD</div>
                </div>
                <div class="tech-item">
                    <div class="tech-icon">🐳</div>
                    <div>Docker</div>
                </div>
                <div class="tech-item">
                    <div class="tech-icon">☸️</div>
                    <div>Kubernetes</div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>DevOps Implementation Demo</p>
    </footer>
</body>
</html>
