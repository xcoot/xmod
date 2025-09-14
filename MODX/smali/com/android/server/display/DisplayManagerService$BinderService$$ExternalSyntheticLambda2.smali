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

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 5
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    .line 7
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 9
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    .line 11
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 15
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 17
    sget v4, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 25
    move-result-object v4

    .line 26
    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    .line 28
    if-ne v4, v0, :cond_0

    .line 30
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 32
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 34
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 36
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 38
    invoke-virtual {v0, v2, p1, v3, p0}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 44
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    .line 46
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    .line 48
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 50
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 52
    sget v4, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 60
    move-result-object v4

    .line 61
    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    .line 63
    if-eq v4, v0, :cond_1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 68
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 70
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 72
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 74
    invoke-virtual {v0, v2, p1, v3, p0}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

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
