.class public final synthetic Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$0:I

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xb

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$0:I

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    if-eq v0, p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne v0, p0, :cond_1

    .line 16
    .line 17
    :cond_0
    or-int/lit16 v1, v1, 0x1000

    .line 18
    .line 19
    :cond_1
    and-int p0, p1, v1

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p0, 0x1

    .line 26
    :goto_0
    return p0

    .line 27
    :pswitch_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$0:I

    .line 28
    .line 29
    and-int v1, p1, v0

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eq v1, v0, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;->f$1:I

    .line 36
    .line 37
    and-int/2addr p0, p1

    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    const/4 v2, 0x1

    .line 42
    :goto_1
    return v2

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
