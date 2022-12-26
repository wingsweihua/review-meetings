let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Traffic Signal", "Prediction", "Simulation"];
let titles_method = ["Reinforcement Learning", "Adaptive", "Multi-agent"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yu Zheng", "Alexandre Bayen", "Zhenhui (Jessie) Li", "Jieping Ye", "Jane Macfarlane", "David Silver", "Pieter Abbeel", "Peter Stone"];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // DM
    "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "MDM", "PAKDD", "PODS", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
