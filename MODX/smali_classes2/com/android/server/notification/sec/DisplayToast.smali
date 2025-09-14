.class public final Lcom/android/server/notification/sec/DisplayToast;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sLogMsg:Lcom/android/server/notification/sec/DisplayToast;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMessage:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mUid:I

.field public sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/notification/sec/DisplayToast;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string/jumbo v2, "yy-MM-dd_HH:mm:ss"

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    sput-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    .line 17
    .line 18
    return-void
.end method
