.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$3:Landroid/os/RemoteCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;->f$3:Landroid/os/RemoteCallback;

    .line 8
    .line 9
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    .line 10
    .line 11
    sget v3, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 12
    .line 13
    invoke-interface {p1, v0, v1, v2, p0}, Landroid/service/wearable/IWearableSensingService;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
