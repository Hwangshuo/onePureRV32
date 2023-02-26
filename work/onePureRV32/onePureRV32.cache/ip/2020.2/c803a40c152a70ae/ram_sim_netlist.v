// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Feb 26 14:52:43 2023
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
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
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
  wire ena;
  wire enb;
  wire [0:0]wea;
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
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.104501 mW" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
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
        .ena(ena),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30352)
`pragma protect data_block
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
4MQlgbecJQjV/c11q7wziKLQFhJvZ4203xGpoA==
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
