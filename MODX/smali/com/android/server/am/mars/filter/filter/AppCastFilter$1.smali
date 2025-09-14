.class public final Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AppCastFilter;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 8
    sget-object p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_PACKAGE:Landroid/net/Uri;

    .line 10
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 12
    if-eqz p2, :cond_0

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mAppCastPackage:Ljava/lang/String;

    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 31
    sget-object p2, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->URI_APP_CAST_ENABLED:Landroid/net/Uri;

    .line 33
    iget-object p1, p1, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mContext:Landroid/content/Context;

    .line 35
    if-eqz p1, :cond_1

    .line 37
    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_1
    if-eqz p1, :cond_2

    .line 51
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AppCastFilter;

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AppCastFilter;->mIsAppCastEnabled:Z

    .line 59
    :cond_2
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
