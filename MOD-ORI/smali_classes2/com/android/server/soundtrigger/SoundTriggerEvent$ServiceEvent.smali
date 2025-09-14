.class public final Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mErrorString:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;

.field public final mType:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mType:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mPackageName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mErrorString:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mErrorString:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mType:Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mErrorString:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "%-25s"

    .line 21
    .line 22
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mPackageName:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v2, " ERROR: "

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mType:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/util/UUID;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const-string v1, " for: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mType:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Ljava/util/UUID;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mType:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent$Type;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "%-12s"

    .line 79
    .line 80
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mErrorString:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    const-string v2, " ERROR: "

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$ServiceEvent;->mPackageName:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    const-string v1, " for: "

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-object p0
.end method
