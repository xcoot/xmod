.class public final Lcom/android/server/contentcapture/ContentCaptureServerSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final appComponentName:Landroid/content/ComponentName;

.field public final mActivityToken:Landroid/os/IBinder;

.field public final mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

.field public final mId:I

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field public final mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/IBinder;Landroid/app/assist/ActivityId;Lcom/android/server/contentcapture/ContentCapturePerUserService;Landroid/content/ComponentName;Lcom/android/internal/os/IResultReceiver;IIII)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p2

    .line 3
    move/from16 v1, p8

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v9, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v9

    .line 14
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 17
    move-object v2, p1

    .line 18
    iput-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mLock:Ljava/lang/Object;

    .line 20
    iput-object v8, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 22
    move-object/from16 v4, p5

    .line 24
    iput-object v4, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 26
    move-object v2, p4

    .line 27
    iput-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 29
    iput v1, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 31
    move/from16 v1, p9

    .line 33
    iput v1, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    .line 35
    new-instance v10, Landroid/view/contentcapture/ContentCaptureContext;

    .line 37
    const/4 v2, 0x0

    .line 38
    move-object v1, v10

    .line 39
    move-object v3, p3

    .line 40
    move/from16 v5, p7

    .line 42
    move-object v6, p2

    .line 43
    move/from16 v7, p10

    .line 45
    invoke-direct/range {v1 .. v7}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V

    .line 48
    iput-object v10, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 50
    move-object/from16 v1, p6

    .line 52
    iput-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 54
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {v2, p0}, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureServerSession;)V

    .line 63
    invoke-interface {v1, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "could not register DeathRecipient for "

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    const-string v1, "ContentCaptureServerSession"

    .line 84
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_1
    return-void
.end method


# virtual methods
.method public final destroyLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 3
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 5
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 7
    const-string v2, "ContentCaptureServerSession"

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const-string/jumbo v1, "destroy(notifyRemoteService=true)"

    .line 14
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 19
    if-nez v0, :cond_1

    .line 21
    const-string/jumbo p0, "destroyLocked(): no remote service"

    .line 24
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_1
    iget p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionFinished(I)V

    .line 33
    return-void
.end method

.method public final setContentCaptureEnabledLocked(Z)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string/jumbo v1, "enabled"

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x2

    .line 19
    :goto_0
    invoke-interface {p0, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string p1, "Error async reporting result to client: "

    .line 26
    const-string v0, "ContentCaptureServerSession"

    .line 28
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 31
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ContentCaptureSession[id="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", act="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, "]"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
