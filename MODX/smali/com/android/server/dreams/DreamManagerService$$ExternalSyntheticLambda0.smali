.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-interface {p1}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onDreamingStopped()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-interface {p1}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onDreamingStarted()V

    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
