.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/LongObjPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(JLjava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    check-cast p3, Lcom/android/server/blob/BlobStoreSession;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long p2, v0, v2

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    iget-wide v0, p3, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 25
    .line 26
    :cond_0
    sget-boolean p2, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    sget-wide v4, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 33
    .line 34
    sub-long/2addr v2, v4

    .line 35
    cmp-long p2, v0, v2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-gez p2, :cond_1

    .line 39
    .line 40
    move p2, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p2, 0x0

    .line 43
    :goto_0
    iget-object v1, p3, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/blob/BlobHandle;->isExpired()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v0, p2

    .line 53
    :goto_1
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 56
    .line 57
    .line 58
    iget-wide p1, p3, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 59
    .line 60
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    return v0
.end method
