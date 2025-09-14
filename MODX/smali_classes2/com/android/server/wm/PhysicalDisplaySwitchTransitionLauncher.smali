.class public final Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mContext:Landroid/content/Context;

.field public mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mShouldRequestTransitionOnDisplaySwitch:Z

.field public mTransition:Lcom/android/server/wm/Transition;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Lcom/android/server/wm/TransitionController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 18
    .line 19
    return-void
.end method
