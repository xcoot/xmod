.class public abstract Lcom/android/server/power/Slog$TimeUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/power/Slog$TimeUtil;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 8
    .line 9
    return-void
.end method
