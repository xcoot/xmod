.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimationDuration:Ljava/lang/Long;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 10
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mAnimationDuration:Ljava/lang/Long;

    .line 18
    return-void
.end method
