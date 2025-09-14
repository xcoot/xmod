.class public final Landroid/net/util/KeepalivePacketDataUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final IPV6_HEADER_LENGTH:I = 0x28

.field private static final TAG:Ljava/lang/String; = "KeepalivePacketDataUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parseTcpKeepalivePacketData(Landroid/net/KeepalivePacketData;)Landroid/net/TcpKeepalivePacketDataParcelable;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Landroid/net/util/KeepalivePacketDataUtil;->TAG:Ljava/lang/String;

    .line 7
    const-string/jumbo v2, "parseTcpKeepalivePacketData should not be used after R, use TcpKeepalivePacketData instead."

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getPacket()[B

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 23
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    const/16 v2, 0x18

    .line 28
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x1c

    .line 34
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 37
    move-result v3

    .line 38
    const/16 v4, 0x22

    .line 40
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 48
    move-result v5

    .line 49
    const/16 v6, 0x8

    .line 51
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 54
    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    new-instance v1, Landroid/net/TcpKeepalivePacketDataParcelable;

    .line 57
    invoke-direct {v1}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    .line 67
    move-result-object v6

    .line 68
    iput-object v6, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 70
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    .line 73
    move-result v6

    .line 74
    iput v6, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 76
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    .line 83
    move-result-object v6

    .line 84
    iput-object v6, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 86
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getDstPort()I

    .line 89
    move-result p0

    .line 90
    iput p0, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 92
    iput v2, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 94
    iput v3, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 96
    iput v4, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 98
    const/4 p0, 0x0

    .line 99
    iput p0, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 101
    iput v5, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 103
    iput v0, v1, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 105
    return-object v1

    .line 106
    :catch_0
    return-object v0
.end method

.method public static toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/NattKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/NattKeepalivePacketDataParcelable;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcAddress:[B

    .line 5
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v1

    iput v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcPort:I

    .line 6
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstAddress:[B

    .line 7
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result p0

    iput p0, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstPort:I

    return-object v0
.end method

.method public static toStableParcelable(Landroid/net/TcpKeepalivePacketData;)Landroid/net/TcpKeepalivePacketDataParcelable;
    .locals 3

    .line 8
    new-instance v0, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 12
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 13
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 14
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 15
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpSeq()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 16
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpAck()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 17
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpWindow()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 18
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpWindowScale()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 19
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getIpTos()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 20
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getIpTtl()I

    move-result p0

    iput p0, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    return-object v0
.end method
