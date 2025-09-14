.class public final Lcom/android/server/dreams/DreamManagerService$5;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService$5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService$5;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/dreams/DreamManagerService$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    .line 2
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget v0, p0, Lcom/android/server/dreams/DreamManagerService$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->updateWhenToDreamSettings()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
