.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final hourOfDay:I

.field public final minute:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-ltz p1, :cond_1

    .line 6
    const/16 v0, 0x17

    .line 8
    if-gt p1, v0, :cond_1

    .line 10
    if-ltz p2, :cond_0

    .line 12
    const/16 v0, 0x3b

    .line 14
    if-gt p2, v0, :cond_0

    .line 16
    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 18
    iput p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "Invalid minute: "

    .line 25
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    const-string p2, "Invalid hourOfDay: "

    .line 37
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
.end method

.method public static valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
    .locals 4

    .line 1
    const-wide/16 v0, 0x3c

    .line 3
    div-long v2, p0, v0

    .line 5
    long-to-int v2, v2

    .line 6
    rem-long/2addr p0, v0

    .line 7
    long-to-int p0, p0

    .line 8
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 10
    invoke-direct {p1, v2, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;-><init>(II)V

    .line 13
    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 14
    if-eq v3, v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 19
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 21
    iget v3, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 23
    if-eq v2, v3, :cond_2

    .line 25
    return v1

    .line 26
    :cond_2
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    .line 28
    iget p1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    .line 30
    if-eq p0, p1, :cond_3

    .line 32
    return v1

    .line 33
    :cond_3
    return v0

    .line 34
    :cond_4
    :goto_0
    return v1
.end method

.method public final getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    move-result v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 13
    const/4 v2, 0x6

    .line 14
    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 19
    move-result p2

    .line 20
    add-int/2addr p2, v1

    .line 21
    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 28
    move-result p2

    .line 29
    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 32
    :goto_0
    const/16 p2, 0xb

    .line 34
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 36
    invoke-virtual {v0, p2, v2}, Ljava/util/Calendar;->set(II)V

    .line 39
    const/16 p2, 0xc

    .line 41
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    .line 43
    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    .line 46
    const/16 p0, 0xd

    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 52
    const/16 p0, 0xe

    .line 54
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_1

    .line 63
    const/4 p0, 0x5

    .line 64
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 67
    :cond_1
    return-object v0
.end method

.method public final getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    move-result v2

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 21
    const/16 v1, 0xb

    .line 23
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 28
    const/16 v1, 0xc

    .line 30
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    .line 32
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 35
    const/16 p0, 0xd

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 41
    const/16 p0, 0xe

    .line 43
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_0

    .line 52
    const/4 p0, 0x5

    .line 53
    const/4 p1, -0x1

    .line 54
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    .line 57
    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    .line 9
    add-int/2addr v0, p0

    .line 10
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 15
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    const-string v1, "%02d:%02d"

    .line 21
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
