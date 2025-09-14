.class public final Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo p1, "onChange - DEFAULT_INPUT_METHOD!"

    .line 11
    .line 12
    .line 13
    const-string p2, "MARs:DefaultAppFilter"

    .line 14
    .line 15
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 19
    .line 20
    iget-object p2, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I

    .line 46
    .line 47
    const/16 p2, 0x96

    .line 48
    .line 49
    if-lt p1, p2, :cond_1

    .line 50
    .line 51
    const/16 p2, 0xa0

    .line 52
    .line 53
    if-gt p1, p2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
