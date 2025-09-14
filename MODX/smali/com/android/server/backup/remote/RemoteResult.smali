.class public final Lcom/android/server/backup/remote/RemoteResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;


# instance fields
.field public final mType:I

.field public final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    .line 9
    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    .line 11
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    .line 17
    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    .line 19
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    .line 25
    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    .line 27
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    .line 6
    iput-wide p2, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/backup/remote/RemoteResult;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/backup/remote/RemoteResult;

    .line 13
    iget v1, p1, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    .line 15
    iget v3, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    .line 17
    if-ne v3, v1, :cond_2

    .line 19
    iget-wide v3, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    .line 21
    iget-wide p0, p1, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    .line 23
    cmp-long p0, v3, p0

    .line 25
    if-nez p0, :cond_2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v0, v2

    .line 29
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "RemoteResult{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    .line 10
    if-eqz v1, :cond_3

    .line 12
    const/4 p0, 0x1

    .line 13
    if-eq v1, p0, :cond_2

    .line 15
    const/4 p0, 0x2

    .line 16
    if-eq v1, p0, :cond_1

    .line 18
    const/4 p0, 0x3

    .line 19
    if-ne v1, p0, :cond_0

    .line 21
    const-string p0, "FAILED_THREAD_INTERRUPTED"

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 26
    const-string v0, "Unknown type"

    .line 28
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 31
    throw p0

    .line 32
    :cond_1
    const-string p0, "FAILED_CANCELLED"

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const-string p0, "FAILED_TIMED_OUT"

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-wide v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    :goto_0
    const-string/jumbo v1, "}"

    .line 47
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
