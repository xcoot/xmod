.class public final synthetic Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
