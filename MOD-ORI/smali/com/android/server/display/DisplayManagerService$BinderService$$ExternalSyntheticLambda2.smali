.class public final synthetic Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

.field public final synthetic f$1:Landroid/hardware/display/BrightnessConfiguration;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 14
    .line 15
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 16
    .line 17
    sget v4, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    .line 27
    .line 28
    if-ne v4, v0, :cond_0

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 35
    .line 36
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 37
    .line 38
    invoke-virtual {v0, v2, p1, v3, p0}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    .line 45
    .line 46
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 49
    .line 50
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 51
    .line 52
    sget v4, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    .line 62
    .line 63
    if-eq v4, v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 67
    .line 68
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 71
    .line 72
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 73
    .line 74
    invoke-virtual {v0, v2, p1, v3, p0}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
