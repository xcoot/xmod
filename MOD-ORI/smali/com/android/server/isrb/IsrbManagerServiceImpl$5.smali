.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    const-string p1, "IsrbManagerServiceImpl"

    .line 2
    .line 3
    const-string/jumbo v0, "showSystemErrDialog() dismissed"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0xb

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    .line 54
    .line 55
    const/16 v0, 0x12

    .line 56
    .line 57
    if-lt v1, v0, :cond_0

    .line 58
    .line 59
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/16 v0, 0xc

    .line 63
    .line 64
    if-lt v1, v0, :cond_1

    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x6

    .line 70
    if-lt v1, v0, :cond_2

    .line 71
    .line 72
    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iput p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    .line 76
    .line 77
    :goto_0
    return-void
.end method
