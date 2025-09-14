.class Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/mode/DisplayModeDirector$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    return-object p0
.end method
