.class public final synthetic Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 3
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    .line 5
    sget v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;->$r8$clinit:I

    .line 7
    invoke-interface {p1, p0}, Landroid/service/wearable/IWearableSensingService;->stopDetection(Ljava/lang/String;)V

    .line 10
    return-void
.end method
