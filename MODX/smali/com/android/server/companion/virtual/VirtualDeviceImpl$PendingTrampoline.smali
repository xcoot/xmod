.class public final Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayId:I

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 6
    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 8
    iput p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mDisplayId:I

    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PendingTrampoline{pendingIntent="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", resultReceiver="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", displayId="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mDisplayId:I

    .line 30
    const-string/jumbo v1, "}"

    .line 33
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
