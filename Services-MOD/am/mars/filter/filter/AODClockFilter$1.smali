.class public final Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const/4 p1, 0x0

    .line 12
    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object p2

    .line 18
    const-string v0, "add_info_today_schedule"

    .line 20
    invoke-static {p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 23
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v1, "calendarWidget "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "MARs:AODClockFilter"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    move p2, p1

    .line 54
    :goto_0
    const/4 v0, 0x1

    .line 55
    if-ne p2, v0, :cond_0

    .line 57
    move p1, v0

    .line 58
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isUsingAODCalendarWidget:Z

    .line 60
    return-void

    .line 61
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getAODClockType()V

    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
