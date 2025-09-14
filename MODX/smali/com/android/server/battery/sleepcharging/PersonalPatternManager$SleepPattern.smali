.class public final Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final bedTimeMillis:J

.field public final confidence:F

.field public final isConfident:Z

.field public final wakeupTimeMillis:J

.field public final weekType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->weekType:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->bedTimeMillis:J

    .line 8
    iput-wide p4, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->wakeupTimeMillis:J

    .line 10
    iput p6, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->confidence:F

    .line 12
    iput-boolean p7, p0, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;->isConfident:Z

    .line 14
    return-void
.end method
