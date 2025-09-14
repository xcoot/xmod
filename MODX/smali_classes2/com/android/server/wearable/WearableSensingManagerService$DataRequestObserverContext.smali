.class public final Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDataRequestObserverId:I

.field public final mDataRequestPendingIntent:Landroid/app/PendingIntent;

.field public final mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

.field public final mDataType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    .line 13
    .line 14
    return-void
.end method
