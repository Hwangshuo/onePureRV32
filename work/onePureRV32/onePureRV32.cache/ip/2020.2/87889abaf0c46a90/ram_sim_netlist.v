// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Feb 27 17:35:13 2023
// Host        : ubuntu22 running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_sim_netlist.v
// Design      : ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire enb;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.222543 mW" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram.mem" *) 
  (* C_INIT_FILE_NAME = "ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30736)
`pragma protect data_block
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
3OZkLcPWh7dk6q9m/w==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
