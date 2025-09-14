.class public abstract Lcom/android/server/battery/sleepcharging/SleepPatternContract;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "content://com.samsung.android.rubin.persona.sleeppattern"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method
