.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper$1;
.super Ljava/util/logging/Formatter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->date:Ljava/util/Date;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x50

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    sget-object v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    .line 19
    invoke-virtual {v1, p0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
