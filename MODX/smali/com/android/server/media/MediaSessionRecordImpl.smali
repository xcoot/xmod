.class public abstract Lcom/android/server/media/MediaSessionRecordImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sNextMediaSessionRecordId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/server/media/MediaSessionRecordImpl;->sNextMediaSessionRecordId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/android/server/media/MediaSessionRecordImpl;->sNextMediaSessionRecordId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    .line 12
    return-void
.end method


# virtual methods
.method public abstract checkPlaybackActiveState(Z)Z
.end method

.method public abstract close()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 8
    instance-of v2, p1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 10
    if-nez v2, :cond_1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    check-cast p1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 15
    iget p0, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    .line 17
    iget p1, p1, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    .line 19
    if-ne p0, p1, :cond_2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v0, v1

    .line 23
    :goto_0
    return v0

    .line 24
    :cond_3
    :goto_1
    return v1
.end method

.method public abstract expireTempEngaged()V
.end method

.method public abstract getForegroundServiceDelegationOptions()Landroid/app/ForegroundServiceDelegationOptions;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSessionPolicies()I
.end method

.method public abstract getUid()I
.end method

.method public abstract getUserId()I
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public abstract isActive()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isLinkedToNotification(Landroid/app/Notification;)Z
.end method

.method public abstract isSystemPriority()Z
.end method
