.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;
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
    iput p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    .line 17
    invoke-direct {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;-><init>()V

    .line 20
    throw p0

    .line 21
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 27
    return-void

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 30
    const-string p1, "Caller does not have permission to execute the appfunction"

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
