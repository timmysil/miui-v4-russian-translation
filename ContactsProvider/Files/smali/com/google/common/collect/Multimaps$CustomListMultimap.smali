.class Lcom/google/common/collect/Multimaps$CustomListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
.source "Multimaps.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient ga:Lcom/google/common/base/Supplier;


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->ga:Lcom/google/common/base/Supplier;

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->b(Ljava/util/Map;)V

    .line 207
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 196
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->fs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 198
    return-void
.end method


# virtual methods
.method protected I()Ljava/util/List;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->ga:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected bridge synthetic J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomListMultimap;->I()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
