.class public final synthetic Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;->f$0:[I

    .line 6
    iput-object p2, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    .line 10
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;->f$0:[I

    .line 3
    iget-object v1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    .line 7
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    .line 9
    sget v2, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->$r8$clinit:I

    .line 11
    invoke-interface {p1, v0, v1, p0}, Landroid/service/wearable/IWearableSensingService;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 14
    return-void
.end method
