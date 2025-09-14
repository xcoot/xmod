.class public final synthetic Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 8
    .line 9
    sget v2, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 31
    .line 32
    invoke-static {}, Landroid/hardware/display/IDisplayManager$Stub;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    sget-boolean v5, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 37
    .line 38
    invoke-virtual {v3, v4, v1}, Lcom/android/server/display/DisplayManagerService;->validatePackageName(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    :cond_0
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 46
    .line 47
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 48
    .line 49
    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
