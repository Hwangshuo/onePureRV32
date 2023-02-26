// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Feb 24 12:01:52 2023
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
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.119075 mW" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_MEM_TYPE = "0" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29728)
`pragma protect data_block
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
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
