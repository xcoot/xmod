.class public final Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSecureConnection:Landroid/os/ParcelFileDescriptor;

.field public final mStatusCallback:Landroid/os/RemoteCallback;

.field public final mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mSecureConnection:Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    .line 9
    .line 10
    return-void
.end method
