.class public final Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/media/session/ISessionControllerCallback;

.field public final mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    .line 9
    .line 10
    return-void
.end method
