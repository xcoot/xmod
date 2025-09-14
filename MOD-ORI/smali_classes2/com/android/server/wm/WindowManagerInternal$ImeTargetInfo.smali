.class public final Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final focusedWindowName:Ljava/lang/String;

.field public final imeControlTargetName:Ljava/lang/String;

.field public final imeLayerTargetName:Ljava/lang/String;

.field public final imeSurfaceParentName:Ljava/lang/String;

.field public final requestWindowName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeSurfaceParentName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
