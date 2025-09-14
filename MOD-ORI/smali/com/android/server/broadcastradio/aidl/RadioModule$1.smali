.class public final Lcom/android/server/broadcastradio/aidl/RadioModule$1;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/broadcastradio/ITunerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 7
    .line 8
    .line 9
    sget-object p1, Landroid/hardware/broadcastradio/ITunerCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/broadcastradio/ITunerCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x2

    .line 29
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    const v0, 0xfffffe

    .line 34
    .line 35
    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    const-string p0, "bff68a8bc8b7cc191ab62bee10f7df8e79494467"

    .line 42
    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :pswitch_0
    sget-object p1, Landroid/hardware/broadcastradio/VendorKeyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, [Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 67
    .line 68
    new-instance p3, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/4 p4, 0x3

    .line 71
    invoke-direct {p3, p4, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 90
    .line 91
    new-instance p4, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda5;

    .line 92
    .line 93
    invoke-direct {p4, p0, p1, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;IZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p4}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 108
    .line 109
    new-instance p3, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;

    .line 110
    .line 111
    invoke-direct {p3, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_3
    sget-object p1, Landroid/hardware/broadcastradio/ProgramListChunk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroid/hardware/broadcastradio/ProgramListChunk;

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    .line 128
    .line 129
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 130
    .line 131
    new-instance p3, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/4 p4, 0x1

    .line 134
    invoke-direct {p3, p4, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :pswitch_4
    sget-object p1, Landroid/hardware/broadcastradio/ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Landroid/hardware/broadcastradio/ProgramInfo;

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    .line 151
    .line 152
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 153
    .line 154
    new-instance p3, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/4 p4, 0x2

    .line 157
    invoke-direct {p3, p4, p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p3}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    sget-object p3, Landroid/hardware/broadcastradio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    .line 170
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    check-cast p3, Landroid/hardware/broadcastradio/ProgramSelector;

    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 180
    .line 181
    new-instance p4, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;

    .line 182
    .line 183
    invoke-direct {p4, p0, p3, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramSelector;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p4}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    :goto_0
    return v2

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
