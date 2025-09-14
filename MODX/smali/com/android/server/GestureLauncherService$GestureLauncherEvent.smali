.class public final enum Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 3
    const/16 v1, 0x292

    .line 5
    const-string v2, "GESTURE_CAMERA_LIFT"

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(IILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 13
    new-instance v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 15
    const/16 v2, 0x293

    .line 17
    const-string v3, "GESTURE_CAMERA_WIGGLE"

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(IILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 25
    new-instance v2, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 27
    const/16 v3, 0x294

    .line 29
    const-string v4, "GESTURE_CAMERA_DOUBLE_TAP_POWER"

    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(IILjava/lang/String;)V

    .line 35
    new-instance v3, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 37
    const/16 v4, 0x295

    .line 39
    const-string v5, "GESTURE_EMERGENCY_TAP_POWER"

    .line 41
    const/4 v6, 0x3

    .line 42
    invoke-direct {v3, v6, v4, v5}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(IILjava/lang/String;)V

    .line 45
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 51
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    .line 3
    return p0
.end method
