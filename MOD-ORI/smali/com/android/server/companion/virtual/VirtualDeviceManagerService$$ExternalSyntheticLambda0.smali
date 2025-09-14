.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAssociationsChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCdmAssociationsChanged(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
