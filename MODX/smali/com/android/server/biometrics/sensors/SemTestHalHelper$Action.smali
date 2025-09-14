.class public final Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

.field public final callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public final code:I

.field public delay:J

.field public final value:I

.field public final vendorCode:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    .line 9
    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 4
    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    .line 5
    iput p4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    .line 6
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x3e8

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Run: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ": "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, ", "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, ", delay = "

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    const-string v1, "SemTestHalHelper"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 84
    const/4 v1, 0x1

    .line 85
    if-eq v0, v1, :cond_4

    .line 87
    const/4 v1, 0x2

    .line 88
    if-eq v0, v1, :cond_3

    .line 90
    const/4 v1, 0x3

    .line 91
    if-eq v0, v1, :cond_2

    .line 93
    const/4 v1, 0x5

    .line 94
    if-eq v0, v1, :cond_1

    .line 96
    const/4 v1, 0x6

    .line 97
    if-eq v0, v1, :cond_0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 102
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 104
    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverTspEvent(I)V

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 116
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 118
    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAuthenticationResult(I)V

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 124
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 126
    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverEnrollResult(I)V

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 132
    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    .line 134
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    .line 136
    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverErrorEvent(II)V

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    .line 142
    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    .line 144
    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    .line 146
    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAcquiredEvent(II)V

    .line 149
    :goto_0
    return-void
.end method
