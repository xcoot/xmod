.class public abstract Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 3
    const-string/jumbo v1, "sleep_pattern_info"

    .line 6
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 12
    return-void
.end method
