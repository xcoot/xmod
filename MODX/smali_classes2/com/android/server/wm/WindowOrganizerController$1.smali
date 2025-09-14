.class public final Lcom/android/server/wm/WindowOrganizerController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public final synthetic val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;


# direct methods
.method public constructor <init>(Landroid/window/WindowContainerTransaction$ContainerChange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getChange()Landroid/window/WindowContainerTransaction$Change;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/window/WindowContainerTransaction$Change;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0
.end method
