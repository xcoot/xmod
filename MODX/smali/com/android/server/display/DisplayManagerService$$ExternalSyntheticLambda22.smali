.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Landroid/companion/virtual/IVirtualDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;->f$1:Landroid/companion/virtual/IVirtualDevice;

    .line 8
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;->f$1:Landroid/companion/virtual/IVirtualDevice;

    .line 5
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;->f$2:I

    .line 7
    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 15
    invoke-virtual {v0, v1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V

    .line 18
    return-void
.end method
