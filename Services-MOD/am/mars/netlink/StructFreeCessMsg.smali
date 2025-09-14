.class public final Lcom/android/server/am/mars/netlink/StructFreeCessMsg;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public cmd:I

.field public code:I

.field public dst_portid:I

.field public flag:I

.field public mod:I

.field public final rpcname:[B

.field public src_portid:I

.field public target_uid:I

.field public type:I

.field public uid:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x64

    .line 6
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 13
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 15
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    .line 17
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    .line 19
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 21
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 23
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 25
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 27
    iput v0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    .line 29
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 16
    new-instance v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    .line 18
    invoke-direct {v0}, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 24
    move-result v1

    .line 25
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 36
    move-result v1

    .line 37
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 42
    move-result v1

    .line 43
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 48
    move-result v1

    .line 49
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 54
    move-result v1

    .line 55
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 60
    move-result v1

    .line 61
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    move-result v1

    .line 67
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_0
    const/16 v2, 0x64

    .line 72
    if-ge v1, v2, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 77
    move-result v2

    .line 78
    iget-object v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    .line 80
    aput-byte v2, v3, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 88
    move-result v1

    .line 89
    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 94
    move-result p0

    .line 95
    iput p0, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    .line 97
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "struct.type = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "struct.mode = "

    .line 21
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v1, "struct.src_portid = "

    .line 37
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string/jumbo v1, "struct.dst_portid = "

    .line 53
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v0

    .line 57
    iget p0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
