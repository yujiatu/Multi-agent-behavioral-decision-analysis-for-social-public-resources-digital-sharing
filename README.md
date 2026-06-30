# Multi-agent behavioral decision analysis for social public resources digital sharing
This repository contains the code and simulation scripts for the paper:

> **Jiang, F., & Ma, J. (2026). Multi-agent behavioral decision analysis for social public resources digital sharing considering government subsidies and penalties. [Journal].**  
> [DOI link — update once assigned]

---

## 📋 Overview

Digitalization is reshaping the allocation and sharing of social public resources, yet sustained social public resource digital sharing (SPRDS) remains hindered by strategic interactions among stakeholders and governance frictions. This study develops a **tripartite evolutionary game model** involving the government, resource suppliers, and resource demanders, integrating **limited regulatory capacity** and a **dynamic subsidy–penalty mechanism**. The stability conditions and evolutionary trajectories of the participants' strategies are examined through evolutionary stable strategy (ESS) analysis and numerical simulations.

---

## 👥 Players and Strategy Space

| Player | Variable | Strategy: 1 | Strategy: 0 |
|--------|----------|-------------|-------------|
| Government | *x* | Active regulation | Passive regulation |
| Resource Suppliers | *y* | Positive sharing | Negative sharing |
| Resource Demanders | *z* | Positive sharing | Negative sharing |

---

## 🔢 Model Description

The evolutionary dynamics are governed by the following replicator equations:

$$\dot{x} = x(x-1)\left[p(B+M)(y+z) - 2pM - L + C_g\right]$$

$$\dot{y} = y(1-y)\left[p(B+M)x + \lambda W z - \theta_s E_s - C_s\right]$$

$$\dot{z} = z(1-z)\left[p(B+M)x + (1-\lambda)W y - \theta_d E_d - C_d\right]$$

where *x*, *y*, *z* ∈ [0, 1] represent the proportions of players adopting the active/positive strategy.

---

## 📊 Parameter Calibration

All simulations are calibrated using publicly available data from Sichuan Province, China (baseline year: 2023). The table below documents the initial value, calculation method, and data source for each parameter.

### Initial Strategy Probabilities

| Parameter | Initial Value | Rationale |
|-----------|:---:|-----------|
| *x* | 0.4 | Government adopts a moderate level of active regulation in the initial phase. |
| *y* | 0.35 | Suppliers (large healthcare institutions) have concerns regarding resource sharing costs. The initial effort level of positive sharing is lower than the government's regulation intensity. |
| *z* | 0.45 | Demanders (primary healthcare institutions) have a strong need for healthcare resources, leading to a higher initial effort level of positive sharing than suppliers. |

### Government Parameters

| Parameter | MATLAB var | Initial Value | Calculation Method | Data Source |
|-----------|-----------|:---:|--------------------|-------------|
| *L* | `L` | 70.34 (million CNY) | Monetized proxy for reputational/public trust loss using the average cost of a data breach in healthcare. Average cost per breach: 9.77 million USD → 9.77 × 7.2 ≈ 70.34 million CNY. | IBM *Cost of a Data Breach Report 2024* |
| *C*g | `C1` | 48.55 (million CNY) | Fiscal investment in Sichuan Province for 2023 to support comprehensive reforms in public hospitals was approximately 48.55 billion CNY. The *National Health Informatization Development Plan Outline (2003–2010)* recommends a minimum 1% investment standard for informatization: 48.55 × 1% × 100 = 48.55 million CNY. | *Sichuan: Provincial Fiscal Multi-point Efforts to Support High-Quality Development of Public Hospitals*; *National Health Informatization Development Plan Outline (2003–2010)* |
| *p* | `p` | 0.65 | Digital governance systems are improving but not yet perfect; the government's ability to detect violations and verify sharing quality is set as moderate. | Assumed parameter for system equilibrium calibration |
| *B* | `B` | 3 (million CNY) | Refers to Chengdu's special policy for promoting the big data industry: proportional subsidies for platform/project investments, with a maximum of 3 million CNY. | *Special Policies of Chengdu Municipality for Promoting the Development of Big Data Industry* |
| *M* | `M` | 0.5 (million CNY) | Refers to the lower penalty range for failing to fulfill data security protection obligations under China's *Data Security Law* (fines ranging from 50,000 to 500,000 CNY; higher for severe consequences). The simulation uses a medium-to-high intensity upper limit of 500,000 CNY. | *Data Security Law of the People's Republic of China*; Yao & Liu, 2025 |

### Supplier Parameters

| Parameter | MATLAB var | Initial Value | Calculation Method | Data Source |
|-----------|-----------|:---:|--------------------|-------------|
| *E*s | `E2` | 71.905 (million) | Uses the number of remote diagnosis and treatment patients in Sichuan's large healthcare institutions to measure shared digital healthcare resources. 2023 total visits: 590 million; average 7.05 visits/resident; 85.92% of Grade II+ hospitals provided remote services. 590 × 85.92% ÷ 7.05 = 71.905 million. | *2023 Sichuan Province Health Development Statistical Bulletin* |
| *θ*s | `T2` | 0.03 | Assumed unit transfer cost coefficient for healthcare resources. | Assumed parameter for system equilibrium calibration |
| *C*s | `C2` | 6.472 (million CNY) | Calibrated as three times the resource transfer cost: 71.905 × 0.03 × 3 = 6.472 million CNY. | Assumed parameter for system equilibrium calibration |

### Demander Parameters

| Parameter | MATLAB var | Initial Value | Calculation Method | Data Source |
|-----------|-----------|:---:|--------------------|-------------|
| *E*d | `E3` | 62.31 (million) | Uses the number of electronic health records (EHRs) in Sichuan's primary healthcare institution management information systems and cloud-based health record service platforms (62.31 million records). | Sichuan Provincial Health Commission, *Reply to Proposal No. 1003 of the Second Session of the 13th Sichuan Provincial Committee of CPPCC 2024* |
| *θ*d | `T3` | 0.036 | Similar to suppliers, but with a higher resource transfer cost (+20%): *θ*d = *θ*s × (1 + 20%) = 0.036. | Assumed parameter for system equilibrium calibration |
| *C*d | `C3` | 6.73 (million CNY) | Assuming an average EHR size of 15 MB, calibrated as three times the resource transfer cost: 62.31 × 0.036 × 3 = 6.73 million CNY. | Assumed parameter for system equilibrium calibration |

### Synergistic Benefit Parameters

| Parameter | MATLAB var | Initial Value | Calculation Method | Data Source |
|-----------|-----------|:---:|--------------------|-------------|
| *W* | `W` | 23.469 (million) | Uses the total number of online hospital consultations in Sichuan Province to measure the synergistic benefits of healthcare resource digital sharing. | *Digital Sichuan Development Report (2024)* |
| *λ* | `lambda` | 0.6 | The formation of digital healthcare assets heavily depends on supplier investment; suppliers obtain more synergistic benefits. Set following the "investment–risk–benefit" symmetry principle. | Assumed parameter for system equilibrium calibration |

---

## ⚙️ Requirements

- **MATLAB** R2019b or later (`ode45` and `tiledlayout` are required)

---

## ▶️ Reproduce the Figures

All scripts are self-contained. Run each file independently in MATLAB to reproduce the corresponding figure:

| Script | Figure | Parameters varied |
|--------|--------|-------------------|
| `analysis_trajectory.m`  | Figure 2 | Evolutionary trajectories in 6 scenarios |
| `initial_state.m`        | Figure 3 | 8 combinations of initial conditions (*x*₀, *y*₀, *z*₀); 3D phase portrait |
| `analysis_pBM.m`         | Figure 4 | Regulatory capability *p*; subsidy *B*; penalty *M* |
| `analysis_CET.m`         | Figure 5 | Transfer cost coefficients *θ*s, *θ*d; sharing investment costs *C*s, *C*d |
| `analysis_Wlambda.m`     | Figure 6 | Synergistic benefits *W*; distribution ratio *λ* |
| `analysis_LCg.m`         | Figure 7 | Reputational loss *L*; regulatory cost *C*g |

---

## 📊 Data Availability

This study is based entirely on **numerical simulation**. The simulation parameters are calibrated using publicly available statistical data from Sichuan Province, China (see Parameter Calibration section above and Table 4 of the manuscript for full details). The code in this repository is sufficient to fully reproduce all figures in the manuscript.

---

## 📜 Citation

If you use this code in your research, please cite:

```bibtex
@article{[citekey],
  title   = {Multi-agent behavioral decision analysis for social public resources digital sharing considering government subsidies and penalties},
  author  = {Jiang Fan and Ma Jianlong},
  journal = {[Journal Name]},
  year    = {2026},
  doi     = {[DOI]}
}
```

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
