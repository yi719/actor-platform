package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import im.actor.model.droidkit.bser.util.SparseArray;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;

public class Member extends BserObject {

    private int uid;
    private int inviterUid;
    private long date;
    private Boolean isAdmin;

    public Member(int uid, int inviterUid, long date, @Nullable Boolean isAdmin) {
        this.uid = uid;
        this.inviterUid = inviterUid;
        this.date = date;
        this.isAdmin = isAdmin;
    }

    public Member() {

    }

    public int getUid() {
        return this.uid;
    }

    public int getInviterUid() {
        return this.inviterUid;
    }

    public long getDate() {
        return this.date;
    }

    @Nullable
    public Boolean isAdmin() {
        return this.isAdmin;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.uid = values.getInt(1);
        this.inviterUid = values.getInt(2);
        this.date = values.getLong(3);
        this.isAdmin = values.optBool(4);
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.uid);
        writer.writeInt(2, this.inviterUid);
        writer.writeLong(3, this.date);
        if (this.isAdmin != null) {
            writer.writeBool(4, this.isAdmin);
        }
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct Member{";
        res += "uid=" + this.uid;
        res += ", inviterUid=" + this.inviterUid;
        res += ", date=" + this.date;
        res += ", isAdmin=" + this.isAdmin;
        res += "}";
        return res;
    }

}
