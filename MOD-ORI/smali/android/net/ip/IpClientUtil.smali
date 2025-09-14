.class public Landroid/net/ip/IpClientUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DUMP_ARG:Ljava/lang/String; = "ipclient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dumpIpClient(Landroid/net/ip/IIpClient;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "IpClient logs have moved to dumpsys network_stack"

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClientCallbacks;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/net/networkstack/ModuleNetworkStackClient;->getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;-><init>(Landroid/net/ip/IpClientCallbacks;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/net/networkstack/NetworkStackClientBase;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
