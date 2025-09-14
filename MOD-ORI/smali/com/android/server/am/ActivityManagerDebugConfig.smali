.class public abstract Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOG_WRITER_INFO:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    .line 2
    .line 3
    new-instance v1, Landroid/util/LogWriter;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const-string v3, "ActivityManager"

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    .line 15
    .line 16
    return-void
.end method
