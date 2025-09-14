.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Integer;

    .line 9
    iput-object p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    .line 8
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Integer;

    .line 12
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v0

    .line 26
    const v4, 0xff00

    .line 29
    and-int/2addr v4, v0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p0

    .line 34
    and-int/lit16 v5, p0, 0xff

    .line 36
    const/16 v6, 0x300

    .line 38
    const/4 v7, 0x6

    .line 39
    invoke-interface/range {v1 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    .line 42
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/usage/AppStandbyInternal;

    .line 45
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Integer;

    .line 49
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Integer;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 58
    move-result v2

    .line 59
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result v3

    .line 63
    const v4, 0xff00

    .line 66
    and-int/2addr v3, v4

    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result p0

    .line 71
    and-int/lit16 p0, p0, 0xff

    .line 73
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;III)V

    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
