.class public final Landroid/net/util/NetworkConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DNS_SERVER_PORT:I = 0x35

.field public static final ETHER_ADDR_BROADCAST:[B

.field public static final ETHER_MTU:I = 0x5dc

.field public static final FF:B

.field public static final ICMPV4_ECHO_REQUEST_TYPE:I = 0x8

.field public static final ICMPV6_ECHO_REQUEST_TYPE:I = 0x80

.field public static final ICMP_ECHO_DATA_OFFSET:I = 0x8

.field public static final ICMP_ECHO_IDENTIFIER_OFFSET:I = 0x4

.field public static final ICMP_ECHO_SEQUENCE_NUMBER_OFFSET:I = 0x6

.field public static final ICMP_HEADER_CHECKSUM_OFFSET:I = 0x2

.field public static final ICMP_HEADER_CODE_OFFSET:I = 0x1

.field public static final ICMP_HEADER_TYPE_OFFSET:I = 0x0

.field public static final IPV4_ADDR_BITS:I = 0x20

.field public static final IPV6_ADDR_BITS:I = 0x80

.field public static final IPV6_ADDR_LEN:I = 0x10

.field public static final IPV6_MIN_MTU:I = 0x500


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asByte(I)B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-byte v0, Landroid/net/util/NetworkConstants;->FF:B

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-byte v0, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aput-byte v0, v1, v2

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    aput-byte v0, v1, v2

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-byte v0, v1, v2

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    aput-byte v0, v1, v2

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    aput-byte v0, v1, v2

    .line 29
    .line 30
    sput-object v1, Landroid/net/util/NetworkConstants;->ETHER_ADDR_BROADCAST:[B

    .line 31
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    const-string/jumbo v0, "no instance permitted"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw p0
.end method

.method public static asByte(I)B
    .locals 0

    .line 1
    int-to-byte p0, p0

    .line 2
    return p0
.end method
