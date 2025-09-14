.class public final enum Lcom/android/server/HermesBigdataFunction$BigdataError;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

.field public static final enum ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;


# instance fields
.field private final errCode:I

.field private final reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 2
    .line 3
    const-string v1, "No Error"

    .line 4
    .line 5
    const-string v2, "NO_ERROR"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 12
    .line 13
    const-string v2, "ERR_NOT_SUPPORTED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, -0x64

    .line 17
    .line 18
    const-string v5, "Bigdata function is not supported"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 26
    .line 27
    const-string v3, "ERR_SEND_DIAGMON"

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const/16 v5, -0x65

    .line 31
    .line 32
    const-string/jumbo v6, "sending diagmon agent is failed"

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 39
    .line 40
    new-instance v3, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 41
    .line 42
    const-string v4, "ERR_UNKNOWN"

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    const/16 v6, -0x3e8

    .line 46
    .line 47
    const-string v7, "Unkonwn error"

    .line 48
    .line 49
    invoke-direct {v3, v5, v6, v4, v7}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-object v3, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 53
    .line 54
    new-instance v4, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 55
    .line 56
    const-string v5, "ERR_FILE_NOT_FOUND"

    .line 57
    .line 58
    const/4 v6, 0x4

    .line 59
    const/16 v7, -0x3e9

    .line 60
    .line 61
    const-string v8, "File is not found"

    .line 62
    .line 63
    invoke-direct {v4, v6, v7, v5, v8}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 67
    .line 68
    new-instance v5, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 69
    .line 70
    const-string v6, "ERR_FILE_CREATED_FAILED"

    .line 71
    .line 72
    const/4 v7, 0x5

    .line 73
    const/16 v8, -0x3ea

    .line 74
    .line 75
    const-string v9, "File creation has failed"

    .line 76
    .line 77
    invoke-direct {v5, v7, v8, v6, v9}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object v5, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 81
    .line 82
    new-instance v6, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 83
    .line 84
    const-string v7, "ERR_PERMISSION_DENIED"

    .line 85
    .line 86
    const/4 v8, 0x6

    .line 87
    const/16 v9, -0x3eb

    .line 88
    .line 89
    const-string v10, "File permission denied"

    .line 90
    .line 91
    invoke-direct {v6, v8, v9, v7, v10}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v6, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 95
    .line 96
    new-instance v7, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 97
    .line 98
    const-string v8, "ERR_ZIP_EXCEPTION"

    .line 99
    .line 100
    const/4 v9, 0x7

    .line 101
    const/16 v10, -0x3ec

    .line 102
    .line 103
    const-string v11, "Zip API is failed"

    .line 104
    .line 105
    invoke-direct {v7, v9, v10, v8, v11}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v7, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 109
    .line 110
    new-instance v8, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 111
    .line 112
    const-string v9, "ERR_IO_EXCEPTION"

    .line 113
    .line 114
    const/16 v10, 0x8

    .line 115
    .line 116
    const/16 v11, -0x3ed

    .line 117
    .line 118
    const-string v12, "Some I/O operation is failed"

    .line 119
    .line 120
    invoke-direct {v8, v10, v11, v9, v12}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sput-object v8, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 124
    .line 125
    new-instance v9, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 126
    .line 127
    const-string v10, "ERR_NULLPOINTER_EXCEPTION"

    .line 128
    .line 129
    const/16 v11, 0x9

    .line 130
    .line 131
    const/16 v12, -0x3ee

    .line 132
    .line 133
    const-string v13, "Null pointer exception has occured"

    .line 134
    .line 135
    invoke-direct {v9, v11, v12, v10, v13}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sput-object v9, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 139
    .line 140
    new-instance v10, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 141
    .line 142
    const-string v11, "ERR_INTERRUPTION_EXCEPTION"

    .line 143
    .line 144
    const/16 v12, 0xa

    .line 145
    .line 146
    const/16 v13, -0x3ef

    .line 147
    .line 148
    const-string v14, "Some interrupt has occured"

    .line 149
    .line 150
    invoke-direct {v10, v12, v13, v11, v14}, Lcom/android/server/HermesBigdataFunction$BigdataError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v10, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 154
    .line 155
    filled-new-array/range {v0 .. v10}, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 160
    .line 161
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/HermesBigdataFunction$BigdataError;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/HermesBigdataFunction$BigdataError;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->$VALUES:[Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/HermesBigdataFunction$BigdataError;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final errCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->errCode:I

    .line 2
    .line 3
    return p0
.end method

.method public final reason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/HermesBigdataFunction$BigdataError;->reason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
