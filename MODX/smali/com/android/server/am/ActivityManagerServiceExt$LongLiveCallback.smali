.class public final Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final ref:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ":"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 24
    const-string p0, "-"

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 35
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
