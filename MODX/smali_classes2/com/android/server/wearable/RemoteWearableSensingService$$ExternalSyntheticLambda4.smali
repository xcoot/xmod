.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/os/RemoteCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$4:Landroid/os/RemoteCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$0:I

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$1:Landroid/os/RemoteCallback;

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;->f$4:Landroid/os/RemoteCallback;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Landroid/service/wearable/IWearableSensingService;

    .line 13
    .line 14
    sget p0, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/service/wearable/IWearableSensingService;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
