.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/OverrideRequestController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/OverrideRequestController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicestate/OverrideRequestController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicestate/OverrideRequestController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/devicestate/OverrideRequest;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
