{
    "subject": {{ toJson .Subject }},
    "sans": {{ toJson .SANs }},
    "keyUsage": ["keyEncipherment", "digitalSignature"],
    "extKeyUsage": ["serverAuth"]
}